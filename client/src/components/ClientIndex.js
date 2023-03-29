import {Link} from 'react-router-dom';
import {FaPencilAlt, FaTrashAlt} from 'react-icons/fa';
import SideBarBottom from "./SideBarBottom";

function ClientIndex({clients, onDeleteClient, clientSort}) {
  function handleDeleteClick(e, first_name, last_name) {
    if (window.confirm(`Permanently delete record for ${first_name} ${last_name}?`)) {
      const id = (e.target.tagName === "path") ? e.target.parentNode.dataset.id : e.target.dataset.id;
      const configObj = {method: "DELETE"};

      fetch(`/clients/${id}`, configObj)
      .then(() => {
        onDeleteClient(id);
      })

    }

  }

  const onSortClick = (e) => {
    const sortBy = e.target.dataset.sortBy;
    const desc = parseInt(e.target.dataset.sortOrder, 10);
    clientSort(sortBy, desc);
    e.target.dataset.sortOrder = (parseInt(e.target.dataset.sortOrder, 10) === 0) ? 1 : 0;
  }

  const clientRows = clients.map(client => {
    const {id, last_name, first_name, middle_initial, doc_number, gender, facility} = client;
    const editPath = `/clients/edit/${id}`;

    return (
      <tr key={id}>
        <td>{last_name}</td>
        <td>{first_name}</td>
        <td>{middle_initial}</td>
        <td>{doc_number}</td>
        <td>{gender.charAt(0)}</td>
        <td>{facility.acronymn}</td>
        <td className="text-center">
          <Link to={editPath}>
            <button
              className="btn btn-ghost hover:btn-info"
              type="button"
              title={`Edit ${last_name}, ${first_name}?`}
              data-id={id}
            >
              <FaPencilAlt data-id={id} />
            </button>
          </Link>
        </td>
        <td className="text-center">
          <button
            className="btn btn-ghost hover:btn-error"
            type="button"
            title={`Delete ${last_name}, ${first_name}?`}
            onClick={(e) => handleDeleteClick(e, first_name, last_name)}
            data-id={id}
          >
            <FaTrashAlt data-id={id} />
          </button>
        </td>
      </tr>
    );
  });

  return (
    <div className="drawer drawer-mobile">
      <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
      <div className="drawer-content flex flex-col mt-8">
        {/* <!-- Page content here --> */}
        <h1 className="text-2xl font-bold justify-center">Manage Clients</h1>
        <div className="min-w-max">
          <table className="table-zebra mt-12 min-w-full">
            <thead>
              <tr>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="last_name">Last Name</th>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="first_name">First Name</th>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="middle_initial">M.I.</th>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="doc_number">DOC Number</th>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="gender">Gender</th>
                <th className="hover:text-success cursor-pointer" onClick={onSortClick} data-sort-order={0} data-sort-by="facility">Facility</th>
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