import logo from './logo.svg';
import './App.css';
import Header from './components/Header';
import AddPlant from './components/AddPlant';
import React, { useState } from 'react';
import HomePage from './components/HomePage';

import Logout from './components/Logout';

import PlantContainer from './components/PlantContainer';
import { Route, Routes } from 'react-router-dom';
import auth from './utils/auth';
import Registration from './components/Registration';
import Login from './components/Login';

function App() {
  const initialState = auth.isAuthenticated();
  const [isAuthenticated, setIsAuthenticated] = useState(initialState);
  return (
    <Routes>
      <Route
        path='/profile'
        element={
          <div className='App'>
            <div className='Profile'>
              <div className='Header'>
                <Header />
              </div>
              <div className='PlantContainer'>
                <PlantContainer />
              </div>
            </div>
          </div>
        }
      />
      <Route path='/profile/addnewplant' element={<AddPlant />} />
      <Route
        path='/signup'
        element={<Registration setIsAuthenticated={setIsAuthenticated} />}
      />
      <Route
        path='/login'
        element={<Login setIsAuthenticated={setIsAuthenticated} />}
      />
      <Route path='/' element={<HomePage />} />
      <Route
        path='/logout'
        element={<Logout setIsAuthenticated={setIsAuthenticated} />}
      />

      {/* <Route path='/description' element={<Description />} /> */}
    </Routes>
  );
}

export default App;
