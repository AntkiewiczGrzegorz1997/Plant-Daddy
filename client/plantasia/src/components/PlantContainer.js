import React, { useState, useEffect } from 'react';
import { getUserPlants, getImgUrls } from '../apiService';
import apiServiceJWT from '../ApiServiceJWT';
import Popup from './Popup'; // Import the Popup component

export default function PlantContainer() {
  const [plants, setPlants] = useState([]); // Use state to store the names
  const [selectedPlant, setSelectedPlant] = useState(null); // Track the selected plant for the popup
  const [plantImages, setPlantImages] = useState([]); // Store the images for the opened plant

  useEffect(() => {
    const fetchAllPlants = async () => {
      const fetchedplants = await apiServiceJWT.profile(
        localStorage.accessToken
      );

      setPlants(fetchedplants.rows);

      // Convert names to the required format
    };

    fetchAllPlants();
  }, []);

  const openPopup = async (plant) => {
    setSelectedPlant(plant); // Set the selected plant when the image is clicked

    const imgObj = await getImgUrls(plant.plant_id);

    if (imgObj.length > 0) {
      setPlantImages(JSON.parse(imgObj[0].image_url));
    } else {
      setPlantImages([plant.icon_id]);
    }
  };

  const closePopup = () => {
    setSelectedPlant(null); // Close the popup by resetting selectedPlant to null
    setPlantImages([]); // Clear the images when closing the popup
  };

  return (
    <div className='plant-wrapper'>
      {/* Display the uploaded image */}
      {plants.length > 0 ? (
        plants.length > 100 ? (
          plants.map((plant) => (
            <div key={plant.plant_id} className='plant-container-single-small'>
              <img
                className={'userPlants-small rotateOnHover'}
                src={plant.icon_id}
                alt='Uploaded'
                onClick={() => openPopup(plant)}
              />
              <div className='plant-name-small'>
                {plant.plant_name ? plant.plant_name : 'ShyPlant'}
              </div>
            </div>
          ))
        ) : (
          //
          plants.map((plant) => (
            <div key={plant.plant_id} className='plant-container-single-big'>
              <img
                className={'userPlants-big rotateOnHover'}
                src={plant.icon_id}
                alt='Uploaded'
                onClick={() => openPopup(plant)}
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

      {selectedPlant && (
        <Popup
          key={selectedPlant.plant_id}
          plant={selectedPlant}
          plantImages={plantImages}
          onClose={closePopup}
        />
      )}
    </div>
  );
}
