import React from 'react';
import { Routes, Route } from 'react-router-dom';

import PList from './App';
import test from './test';

const Main = () => {
  return (
    <Routes> {/* The Switch decides which component to show based on the current URL.*/}
      <Route exact path='/' element={PList}></Route>
      <Route exact path='/test' element={test}></Route>
    </Routes>
  );
}

export default Main;