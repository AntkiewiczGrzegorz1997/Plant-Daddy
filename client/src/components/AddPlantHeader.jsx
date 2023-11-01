import React, { useState, useEffect } from 'react';
import HamburgerMenu from './HamburgerMenu';
import apiServiceJWT from '../api-services/ApiServiceJWT';
import Hamburger from './Hamburger';

export default function AddPlantHeader() {
  const [menuOpen, setMenuOpen] = useState(false);
  const [username, setUsername] = useState('');

  useEffect(() => {
    const fetchUsername = async () => {
      const fetchedUsername = await apiServiceJWT.username(
        localStorage.accessToken
      );

      setUsername(fetchedUsername.rows[0].username);
    };
    fetchUsername();
  }, []);
  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };
  return (
    <div
      className='flex flex-row justify-between w-full darkbackground'
      style={{
        borderBottom: '2px solid #595496',
      }}
    >
      <div className='font-bold text-3xl m-5'> {username} </div>
      <div className='hamburger'>
        <div onClick={toggleMenu}>{!menuOpen && <Hamburger />}</div>
      </div>
      {menuOpen && (
        <HamburgerMenu onClose={toggleMenu} pageName={'addnewplant'} />
      )}
    </div>
  );
}
