import { useState, useEffect } from "react";
import { Link, Route, Routes } from "react-router-dom";
import Home from "./components/Home";
import Header from "./components/Header";

function App() {

  return (
    <>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
      </Routes>
        {/*
        <div className="App">
        <h1 className="text-3xl font-bold underline">Page Count: {count}</h1>
      </div> */}
    </>
  );
}

export default App;