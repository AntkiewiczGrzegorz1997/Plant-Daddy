const url = 'http://localhost:3000';
const apiUrl = 'https://perenual.com';
const apiKey = 'sk-h1y9650afd30ac0db2194';

export async function getAllPlantNames() {
  try {
    console.log('here');
    const response = await fetch(`${url}/plantnames`);
    console.log('here2');

    const data = await response.json();
    console.log('hi', data);

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getUserPlants(user_id) {
  try {
    const response = await fetch(`${url}/profile/${user_id}`);
    const data = await response.json();

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getPlantInfo(name) {
  try {
    console.log(name);
    const response = await fetch(`${url}/plantinfo/${name}`);
    const data = await response.json();
    console.log(data);

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getPlantDescription(id) {
  try {
    const response = await fetch(
      `${apiUrl}/api/species/details/${id}?key=${apiKey}`
    );
    const data = await response.json();

    return data.description;
  } catch (e) {
    console.error(e);
  }
}

export async function addPlant(plant) {
  //what to do with user id - i will ask Arun today
  try {
    const response = await fetch(`${url}/profile/addnewplant`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        user_ID: 1,
        plant_ID: plant.plant_ID,
        ID: plant.ID,
        plant_name: plant.plant_name,
        full_name: plant.full_name,
        scientific_name: plant.scientific_name,
        plant_description: plant.plant_description,
        plant_size: plant.plant_size,
        age: plant.age,
        watering: plant.watering,
        sunlight: plant.sunlight,
        icon_ID: plant.icon_ID,
      }),
    });
    const data = await response.json();
    return data;
  } catch (e) {
    console.log(e);
  }
}

export async function addUploadedImages(uploadedImg) {
  try {
    const response = await fetch(`${url}/uploadImg`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        user_ID: uploadedImg.user_ID,
        plant_ID: uploadedImg.plant_ID,
        image_url: uploadedImg.image_url,
      }),
    });
    const data = await response.json();
    return data;
  } catch (e) {
    console.log(e);
  }
}

export async function getAllUserPlants() {}
