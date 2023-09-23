// Popup.js
import React, { useEffect, useState } from 'react';

const Popup = ({ plant, onClose, plantImages }) => {
  return (
    <div className='overlay'>
      <div className='popup'>
        <button className='close-button' onClick={onClose}>
          Close
        </button>
        <div className='popup-content'>
          <p>{plant.plant_name}</p>
          <div className='stored-imgs-container'>
            {plantImages.length === 0 ? (
              <p>No images available</p>
            ) : (
              <>
                <div>
                  {plantImages.map(
                    (img, index) =>
                      index <= 0 && (
                        <img
                          className='first-img-bigger'
                          src={img}
                          alt={img}
                          key={img}
                        />
                      )
                  )}
                </div>

                <div className='later-img-smaller-container'>
                  {plantImages.map(
                    (img, index) =>
                      index > 0 && (
                        <img
                          className='later-img-smaller'
                          src={img}
                          alt={img}
                          key={img}
                        />
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

          {/*<img className='popup-image' src={plant.icon_id} alt='Large Plant' />*/}
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
