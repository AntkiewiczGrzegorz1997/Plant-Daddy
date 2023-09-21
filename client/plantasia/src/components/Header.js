import React, { useState } from 'react';
import HamburgerMenu from './HamburgerMenu';

export default function Header() {
  const [menuOpen, setMenuOpen] = useState(false);
  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };
  return (
    <div className='navbar-flex'>
      <div className='Username'> Username </div>
      <div className='hamburger'>
        <div onClick={toggleMenu}>
          {!menuOpen ? (
            <>
              <span className='bar'></span>
              <span className='bar'></span>
              <span className='bar'></span>
            </>
          ) : (
            <div id='mdiv'>
              <div class='mdiv'>
                <div class='md'></div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

//{menuOpen && <HamburgerMenu menuOpen={menuOpen} />}
