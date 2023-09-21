import logo from './logo.svg';
import './App.css';
import Header from './components/Header';
import AddPlant from './components/AddPlant';

import PlantContainer from './components/PlantContainer';
import { Route, Routes } from 'react-router-dom';

function App() {
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
    </Routes>
  );
}

export default App;
