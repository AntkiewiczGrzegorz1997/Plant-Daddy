import React, { useState, useEffect } from 'react';
import { getUserPlants, getImgUrls } from '../apiService';
import apiServiceJWT from '../ApiServiceJWT';
import Popup from './Popup';

export default function PlantContainer() {
  const [plants, setPlants] = useState([]);
  const [selectedPlant, setSelectedPlant] = useState(null);
  const [plantImages, setPlantImages] = useState([]);

  useEffect(() => {
    const fetchAllPlants = async () => {
      const fetchedplants = await apiServiceJWT.profile(
        localStorage.accessToken
      );

      setPlants(fetchedplants.rows);
    };

    fetchAllPlants();
  }, []);

  const openPopup = async (plant) => {
    setSelectedPlant(plant);

    const imgObj = await getImgUrls(plant.plant_id);

    if (imgObj.length > 0) {
      setPlantImages(JSON.parse(imgObj[0].image_url));
    } else {
      setPlantImages([plant.icon_id]);
    }
  };

  const closePopup = () => {
    setSelectedPlant(null);
    setPlantImages([]);
  };

  return (
    <div className='plant-wrapper'>
      {plants.length > 0 ? (
        plants.length > 100 ? (
          plants.map((plant, index) => (
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
          plants.map((plant, index) => (
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
        <div className='justText'>
          <p>There are no plants available yet...</p>
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
