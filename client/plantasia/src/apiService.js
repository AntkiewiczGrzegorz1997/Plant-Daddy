const url = 'http://localhost:3000';

export async function getAllPlantNames() {
  try {
    const response = await fetch(`${url}/plantnames`);
    const data = await response.json();

    return data;
  } catch (e) {
    console.error(e);
  }
}

export async function addPlants() {}

export async function getAllUserPlants() {}
