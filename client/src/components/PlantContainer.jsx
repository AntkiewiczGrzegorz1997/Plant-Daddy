import React, { useState, useEffect } from 'react';
import { getUserPlants, getImgUrls } from '../api-services/apiService';
import apiServiceJWT from '../api-services/ApiServiceJWT';
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
    <div
      className='flex flex-row flex-wrap pt-[3vh] pl-[1vw] h-[87vh] content-start'
      style={{
        borderTop: '2px solid #595496',
        backgroundImage:
          'linear-gradient(var(--black-background), var(--violet))',
      }}
    >
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
          plants.map((plant, index) => (
            <div key={plant.plant_id} className='m-[0.5vh] mx-[0.5vw]'>
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
