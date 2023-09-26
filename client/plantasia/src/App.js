import './App.css';
import Header from './components/Header';
import AddPlant from './components/AddPlant';
import React, { useState, useEffect } from 'react';
import HomePage from './components/HomePage';

import Logout from './components/Logout';

import PlantContainer from './components/PlantContainer';
import { Route, Routes, Navigate } from 'react-router-dom';
import auth from './utils/auth';
import Registration from './components/Registration';
import Login from './components/Login';

function App() {
  const initialIsAuthenticated =
    localStorage.getItem('isAuthenticated') === 'true';
  const [isAuthenticated, setIsAuthenticated] = useState(
    initialIsAuthenticated
  );

  // Update localStorage when isAuthenticated state changes
  useEffect(() => {
    localStorage.setItem('isAuthenticated', isAuthenticated.toString());
  }, [isAuthenticated]); // Add this line for debugging

  return (
    <Routes>
      <Route
        path='/profile/*'
        element={
          isAuthenticated ? (
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
          ) : (
            <Navigate to='/login' replace />
          )
        }
      />

      <Route
        path='/profile/addnewplant'
        element={
          isAuthenticated ? <AddPlant /> : <Navigate to='/login' replace />
        }
      />
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
