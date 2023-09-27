import React, { useEffect, useState } from 'react';
import apiServiceJWT from '../ApiServiceJWT';

const Popup = ({ plant, onClose, plantImages }) => {
  const [images, setImages] = useState([]);
  useEffect(() => {
    setImages(plantImages);
  }, [plantImages]);

  const handleDeleteImage = async (plant, index) => {
    const data = await apiServiceJWT.deleteImg(
      localStorage.accessToken,
      plant.plant_id,
      index
    );
    setImages(JSON.parse(data[0].image_url));
  };

  return (
    <div className='overlay'>
      <div className='popup'>
        <button className='close-button' onClick={onClose}>
          Close
        </button>
        <div className='popup-content'>
          <p>{plant.plant_name}</p>
          <div className='stored-imgs-container'>
            {images.length === 0 ? (
              <div className='later-img-smaller-container0'>
                <p>No images available...</p>
              </div>
            ) : (
              <>
                <div className='later-img-smaller-container'>
                  {images.map(
                    (img, index) =>
                      index >= 0 && (
                        <div key={index} className='image-container'>
                          <img
                            className='later-img-smaller'
                            src={img}
                            alt={img}
                            key={img}
                          />
                          <button
                            className='delete-button'
                            onClick={() => handleDeleteImage(plant, index)}
                          >
                            Delete
                          </button>
                        </div>
                      )
                  )}
                </div>
              </>
            )}
          </div>

          <div className='plant-data1-popup'>
            <p>{`Species: ${plant.full_name}`}</p>
            <p>{`My plant since: ${plant.age}`}</p>
            <p>{`Watering: ${plant.watering}`}</p>
            <p>{`Sunlight: ${JSON.parse(plant.sunlight).join(', ')}`}</p>
          </div>

          <div className='popup-details'>
            <img src={plant.image_url} alt={plant.image_url} />

            <p className='plant-description'>{plant.plant_description}</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Popup;
