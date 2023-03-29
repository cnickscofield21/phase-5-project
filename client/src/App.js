import {useState, useEffect} from "react";
import {Route, Routes, useNavigate} from "react-router-dom";
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
  const navigate = useNavigate();

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

  // FIXME: Finish logic
  const onUpdateClient = (updatedClient) => {
    const updatedClients = clients.map(ogClient => {
      if (ogClient.id === updatedClient.id) {
        return updatedClient;
      } else {
        return ogClient;
      }

    })

    setClients(updatedClients);
    navigate(`/clients`);
  }

  const onDeleteClient = (deletedId) => {
    const updatedClients = clients.filter(client => {
      return client.id !== parseInt(deletedId, 10);
    })
    setClients(updatedClients);
  }

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
      <Header user={user} updateUser={updateUser} />
      <div className="container mx-auto">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/clients" element={<ClientIndex clients={clients} onDeleteClient={onDeleteClient} />} />
          {/* TODO: Should I add 'edit' to this path? */}
          <Route path="/clients/edit/:id" element={<ClientEdit onUpdateClient={onUpdateClient} />} />
          <Route path="/clients/new" element={<ClientCreate onAddClient={onAddClient} />} />

        </Routes>
      </div>
    </>
  );
}

export default App;