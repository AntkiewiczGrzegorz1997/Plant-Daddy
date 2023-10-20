import React, { useState, useEffect } from 'react';
import HamburgerMenu from './HamburgerMenu';
import apiServiceJWT from '../api-services/ApiServiceJWT';

export default function Header() {
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
    <div className='navbar-flex'>
      <div className='Username'>{username}</div>
      <div className='hamburger'>
        <div onClick={toggleMenu}>
          {!menuOpen && (
            <>
              <img
                className='menu-icon'
                src={'/menu-icon.png'}
                alt='menu-icon'
              />
              <span class='material-symbols-outlined'>expand_more</span>
            </>
          )}
        </div>
      </div>
      {menuOpen && <HamburgerMenu onClose={toggleMenu} pageName={'profile'} />}
    </div>
  );
}
