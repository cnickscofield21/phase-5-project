import { useState, useEffect } from "react";
import { Link, Route, Routes } from "react-router-dom";
import Home from "./components/Home";
import Header from "./components/Header";
import ClientIndex from "./components/ClientIndex";
import ClientCreate from "./components/ClientCreate";
import ClientEdit from "./components/ClientEdit";

// TODO: Clean up newer components
import Login from "./components/Login";

function App() {
  const [user, setUser] = useState(null);
  const [errors, setErrors] = useState(false);
  const [clients, setClients] = useState([]);

  useEffect(() => {
    fetch('/authorized')
    .then(r => {
      if (r.ok) {
        r.json().then(user => {
          setUser(user);
          fetchClients();
        })
      } else {
        setUser(null)
      }
    })
  },[])

  const fetchClients = () => {
    fetch(`/clients`)
    .then(r => {
      if (r.ok) {
        r.json().then(setClients);
      } else {
        r.json().then(data => setErrors(data.error));
      }
    })
  }

  const onAddClient = (client) => setClients(current => [...current, client]);

  const onUpdateClient = (updatedClient) => setClients(current => {
    // FIXME: Finish logic
  })

  // TODO: Enable theming
  // const [theme, setTheme] = useState(getTheme);
  // useEffect(() => {
  //   document.documentElement.setAttribute('data-theme', theme);
  // }, [theme]);

  // function getTheme() {
  //   // If theme is not set, DaisyUI will set theme based on system settings.
  //   return (localStorage.getItem("cdmTheme")) ? localStorage.getItem("cdmTheme") : "";
  // };

  // const onChangeTheme = (newTheme) => {
  //   localStorage.setItem("cdmTheme", newTheme);
  //   setTheme(newTheme);
  // }

  const updateUser = (user) => setUser(user);

  if (errors) return <h1>{errors}</h1>;
  if (!user) return (
    <>
      <Header user={user} updateUser={updateUser} />
      <div className="container mx-auto">
        <Login updateUser={updateUser} />
      </div>
    </>
  )
  return (
    <>
      {/* TODO: Use when ready for theming <Header onChangeTheme={onChangeTheme} currentTheme={theme} /> */}
      <Header user={user} updateUser={updateUser} />
      <div className="container mx-auto">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/clients" element={<ClientIndex clients={clients} />} />
          {/* TODO: Should I add 'edit' to this path? */}
          <Route path="/clients/:id" element={<ClientEdit onUpdateClient={onUpdateClient} />} />
          <Route path="/clients/new" element={<ClientCreate onAddClient={onAddClient} />} />

        </Routes>
      </div>
    </>
  );
}

export default App;