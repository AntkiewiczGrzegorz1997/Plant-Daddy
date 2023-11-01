import { apis } from './api-access';

const apiUrl = apis.perenual.apiUrl;
const apiKey = apis.perenual.apiKey;
// const url = 'http://localhost:3000';
const url = 'http://server-new2:3000';
export async function getAllPlantNames() {
  try {
    const response = await fetch(`${url}/plantnames`);

    const data = await response.json();

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getAllUsernames() {
  try {
    const response = await fetch(`${url}/usernames`);

    const data = await response.json();

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getUserPlants(accessToken) {
  try {
    const response = await fetch(`${url}/profile`, {
      method: 'GET',
      headers: {
        Authorization: `Bearer ${accessToken}`,
      },
    });
    const data = await response.json();

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getPlantInfo(name) {
  try {
    const response = await fetch(`${url}/plantinfo/${name}`);
    const data = await response.json();

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

export async function addPlant(plant, accessToken) {
  //what to do with user id - i will ask Arun today

  try {
    const response = await fetch(`${url}/profile/addnewplant`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${accessToken}`,
      },
      body: JSON.stringify({
        user_ID: localStorage.accessToken,
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
        image_url: plant.image_url,
      }),
    });
    const data = await response.json();
    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getImgUrls(plant_id) {
  try {
    const response = await fetch(`${url}/imgs/${plant_id}`);

    const data = await response.json();
    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function getAllUserPlants() {}
