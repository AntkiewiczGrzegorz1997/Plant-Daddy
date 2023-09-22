import React, { useState, useEffect } from 'react';
import { getUserPlants } from '../apiService';

export default function PlantContainer() {
  const [plants, setPlants] = useState([]); // Use state to store the names

  useEffect(() => {
    const fetchAllPlants = async () => {
      const fetchedplants = await getUserPlants(1);
      setPlants(fetchedplants);
      // Convert names to the required format
    };

    fetchAllPlants();
  }, []);

  return (
    <div className='plant-wrapper'>
      {/* Display the uploaded image */}
      {plants.length > 0 ? (
        plants.length > 100 ? (
          plants.map((plant) => (
            <div key={plant} className='plant-container-single-small'>
              <img
                className='userPlants-small'
                src={plant.icon_id}
                alt='Uploaded'
              />
              <div className='plant-name-small'>
                {plant.plant_name ? plant.plant_name : 'ShyPlant'}
              </div>
            </div>
          ))
        ) : (
          //
          plants.map((plant) => (
            <div key={plant} className='plant-container-single-big'>
              <img
                className='userPlants-big '
                src={plant.icon_id}
                alt='Uploaded'
              />
              <div className='plant-name-big'>
                {plant.plant_name ? plant.plant_name : 'ShyPlant'}
              </div>
            </div>
          ))

          //
        )
      ) : (
        <div>
          <h1>There are no plants available yet </h1>
        </div>
      )}
    </div>
  );
}
