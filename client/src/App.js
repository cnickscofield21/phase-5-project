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
  const [searchQuery, setSearchQuery] = useState("");
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
  }, [])

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

  const onAddClient = (newClient) => {
    setClients(clients => [...clients, newClient]);
    navigate(`/clients`);
  };

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

  const clientSort = (sortBy, desc = 0) => {
    const sortRoutes = {
      last_name: function(a, b) {
          return a.last_name.toLowerCase().localeCompare(b.last_name.toLowerCase());
      },
      first_name: function(a, b) {
          return a.first_name.toLowerCase().localeCompare(b.first_name.toLowerCase());
      },
      facility: function(a, b) {
          return a.facility.name.toLowerCase().localeCompare(b.facility.name.toLowerCase());
      },
      middle_initial: function(a, b) {
          return a.middle_initial.toLowerCase().localeCompare(b.middle_initial.toLowerCase());
      },
      doc_number: function(a, b) {
          return parseInt(a.doc_number, 10) - parseInt(b.doc_number, 10);
      },
      gender: function(a, b) {
          return a.gender.toLowerCase().localeCompare(b.gender.toLowerCase());
      }
    }

    const sortedClients = (desc) ? clients.sort(sortRoutes[sortBy]).reverse() : clients.sort(sortRoutes[sortBy]);
    setClients([...sortedClients]);
  }

  const searchResults = clients.filter((client) => {
    return client.first_name.toLowerCase().includes(searchQuery.toLowerCase()) ||
            client.last_name.toLowerCase().includes(searchQuery.toLowerCase()) ||
            client.doc_number.toString().includes(searchQuery) ||
            client.facility.acronymn.toLowerCase().includes(searchQuery.toLowerCase()) ||
            client.gender.includes(searchQuery);
  });

  const onHandleChange = (e) => setSearchQuery(e.target.value);

  const onHandleReset = () => {
    setSearchQuery("");
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
          <Route path="/clients" element={
            <ClientIndex
              searchResults={searchResults}
              onDeleteClient={onDeleteClient}
              clientSort={clientSort}
              onHandleChange={onHandleChange}
              onHandleReset={onHandleReset}
            />}
          />
          {/* TODO: Should I add 'edit' to this path? */}
          <Route path="/clients/edit/:id" element={<ClientEdit onUpdateClient={onUpdateClient} />} />
          <Route path="/clients/new" element={<ClientCreate onAddClient={onAddClient} />} />

        </Routes>
      </div>
    </>
  );
}

export default App;