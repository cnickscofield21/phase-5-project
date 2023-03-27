import { useState } from "react";
import { Link } from 'react-router-dom';
import { FaPencilAlt, FaTrashAlt } from 'react-icons/fa';
import SideBarBottom from "./SideBarBottom";


function ClientIndex({clients}) {
  const [clientList, setClientList] = useState(clients);
  const editPath = "/";

  function handleEditClick(e) {
    // const id = (e.target.tagName == "path") ? e.target.parentNode.dataset.id : e.target.dataset.id;
    // onUpdateUsers();
  }

  function handleDeleteClick(e) {
    if (window.confirm("Permanently delete this record?")) {
      const id = (e.target.tagName == "path") ? e.target.parentNode.dataset.id : e.target.dataset.id;
      const configObj = {method: "DELETE"};

      fetch(`/clients/${id}`, configObj)
      .then(() => {
        // onDeleteUser();
      })
    }
  }

  const clientRows = clientList.map(client => {
    const {id, last_name, first_name, middle_initial, doc_number, gender, facility} = client;

    return (
      <tr key={id}>
        <td>{last_name}</td>
        <td>{first_name}</td>
        <td>{middle_initial}</td>
        <td>{doc_number}</td>
        <td>{gender.charAt(0)}</td>
        <td>{facility.acronymn}</td>
        <td className="text-center">
          {/* <Link to={editPath}> */}
            <button
              className="btn btn-ghost hover:btn-info"
              type="button"
              title={`Edit ${last_name}, ${first_name}?`}
              onClick={handleEditClick}
              data-id={id}
              >
              <FaPencilAlt data-id={id} />
            </button>
          {/* </Link> */}
        </td>
        <td className="text-center">
          <button
            className="btn btn-ghost hover:btn-error"
            type="button"
            title={`Delete ${last_name}, ${first_name}?`}
            onClick={handleDeleteClick}
            data-id={id}
          >
            <FaTrashAlt data-id={id} />
          </button>
        </td>
      </tr>
    );
  });

  function onTest() {
    alert("Clicked!");
  }

  return (
    <div className="drawer drawer-mobile">
      <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
      <div className="drawer-content flex flex-col mt-8">
        {/* <!-- Page content here --> */}
        <h1 className="text-2xl font-bold justify-center">Manage Clients</h1>
        <div className="min-w-max">
          <table className="table-zebra mt-8 min-w-full">
            <thead>
              <tr>
                <th>Last Name</th>
                <th>First Name</th>
                <th>M.I.</th>
                <th>DOC Number</th>
                <th>Gender</th>
                <th>Facility</th>
                <th>Edit</th>
                <th>Delete</th>
              </tr>
            </thead>
            <tbody>
              {clientRows}
            </tbody>
          </table>
        </div>
        <label htmlFor="my-drawer-2" className="btn btn-primary drawer-button lg:hidden mt-8">Menu</label>
      </div>
      <SideBarBottom />
    </div>
  )
}

export default ClientIndex;