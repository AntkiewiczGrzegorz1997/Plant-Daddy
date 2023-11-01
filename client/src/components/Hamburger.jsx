import React from 'react';

export default function Hamburger() {
  return (
    <div>
      <div className='w-10 h-10 rounded-full bg-[#1b1c25] border-[#585494] flex items-center justify-center cursor-pointer m-5 shadow-[0px_0px_24px_8px_rgba(148,_140,_249,_0.4)]'>
        <svg
          className='fill-white h-12'
          xmlns='http://www.w3.org/2000/svg'
          height='24'
          viewBox='0 -960 960 960'
          width='24'
        >
          <path d='M120-160v-80h720v80H120Zm0-240v-80h720v80H120Zm0-240v-80h720v80H120Z' />
        </svg>
      </div>
    </div>
  );
}
