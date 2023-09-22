const pgp = require('pg-promise')();
const username = 'postgres';
const password = 'postgres';
const dbName = 'plantasia';
const fs = require('fs');
const filePath = './combined_data.json';

const connectionString = `postgres://${username}:${password}@localhost:5432/${dbName}`;

// Create a PostgreSQL database instance
const db = pgp(connectionString);

fs.readFile(filePath, 'utf8', async (err, data) => {
  if (err) {
    console.error('Error reading JSON file:', err);
    return;
  }

  try {
    // Parse the JSON data
    const jsonData = JSON.parse(data);

    console.log(jsonData);

    // Iterate through the data and insert it into the database
    for (const item of jsonData.data) {
      const imageUrl =
        item.default_image && item.default_image.medium_url
          ? item.default_image.medium_url
          : 'https://www.iconpacks.net/icons/2/free-plant-icon-1573-thumb.png';

      await db.none(
        'INSERT INTO Plants (ID, full_name, scientific_name, other_name, image_url, sunlight, watering) VALUES ($1, $2, $3, $4, $5, $6, $7)',
        [
          item.id,
          item.common_name,
          item.scientific_name[0],
          JSON.stringify(item.other_name[0]),
          imageUrl,
          JSON.stringify(item.sunlight),
          item.watering,
        ]
      );
    }

    console.log('Data inserted successfully.');
  } catch (error) {
    console.error('Error inserting data:', error);
  } finally {
    pgp.end();
  }
});
