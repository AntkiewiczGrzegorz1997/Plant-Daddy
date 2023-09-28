const axios = require('axios');
const fs = require('fs');

import { apis } from '../client/plantasia/src/api-access';

const apiUrl = apis.perenual.apiUrl;
const apiKey = apis.perenual.apiKey;

const perPage = 30; // Number of items per page
let currentPage = 101;
let data = [];

const fetchData = async (page) => {
  try {
    const response = await axios.get(apiUrl, {
      params: {
        key: apiKey,
        page,
      },
    });

    if (response.status !== 200) {
      console.error(`Failed to fetch page ${page}. Exiting.`);
      return null;
    }

    return response.data;
  } catch (error) {
    console.error(`Error while fetching page ${page}:`, error.message);
    return null;
  }
};

const fetchAllData = async () => {
  while (true) {
    const pageData = await fetchData(currentPage);

    if (!pageData) {
      break;
    }

    data = data.concat(pageData.data);

    if (currentPage >= pageData.last_page) {
      break;
    }

    currentPage++;
  }
};

const saveDataToJsonFile = () => {
  const jsonData = {
    data: data,
  };

  fs.writeFileSync('combined_data2.json', JSON.stringify(jsonData, null, 2));
  console.log('Data retrieval completed and saved to combined_data2.json.');
};

fetchAllData().then(() => {
  saveDataToJsonFile();
});
