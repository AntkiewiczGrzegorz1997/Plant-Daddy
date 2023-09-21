import React from 'react';

export default function HamburgerMenu(menuOpen) {
  return (
    <nav className='navbar'>
      <div className={`menu-nav${menuOpen ? ' show-menu' : ''}`}>
        <div>Add Plant</div>
        <div>User Stats</div>
        <div>Log out</div>
        {/* Add more menu options as needed */}
      </div>
    </nav>
  );
}
