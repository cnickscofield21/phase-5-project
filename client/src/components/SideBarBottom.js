import {Link} from 'react-router-dom';

function SideBarBottom({onHandleChange, onHandleReset}) {
  const newPath = `/clients/new`;

  return (
    <>
      <div className="drawer-side">
        <label htmlFor="my-drawer-2" className="drawer-overlay"></label>
        <form onReset={onHandleReset}>
          <ul className="menu p-4 w-80 bg-base-100 text-base-content pt-12">

            <li>
              <div className="form-control w-full max-w-xs">
                <Link to={newPath}>
                  <button
                    className="btn btn-success w-64 mt-12"
                    type="button"
                    title={`Add New Client`}
                  >
                    Add New Client
                  </button>
                </Link>
              </div>
            </li>

            <li>
              <div
                className="form-control w-full max-w-xs"
                title=""
              >
                <label className="label" htmlFor="search-multiple">
                  <span className="label-text">Search:</span>
                </label>
                <input
                  type="text"
                  name="search_multiple"
                  id="search-multiple"
                  placeholder="Ex: 'Bob', 'Female', 'ACVF', etc."
                  className="input input-bordered w-full max-w-xs"
                  onChange={onHandleChange}
                />
                <label className="label">
                  <span className="label-text-alt">
                    Search by: First or Last name, DOC Number, Gender, or
                    Facility acronymn
                  </span>
                </label>
              </div>
            </li>

            {/* <li>
              <div className="form-control w-full max-w-xs">
                <label className="label" htmlFor="search-doc-number">
                  <span className="label-text">DOC Number:</span>
                </label>
                <input
                  type="text"
                  name="doc_number"
                  id="search-doc-number"
                  placeholder="Ex: 123456"
                  className="input input-bordered w-full max-w-xs"
                  onChange={onHandleChange}
                />
              </div>
            </li>

            <li>
              <div className="form-control w-full max-w-xs">
                <label className="label" htmlFor="search-name">
                  <span className="label-text">Name:</span>
                </label>
                <input
                  type="text"
                  name="name"
                  id="search-name"
                  placeholder="Ex: Bob Smith"
                  className="input input-bordered w-full max-w-xs"
                  onChange={onHandleChange}
                />
              </div>
            </li>

            <li>
              <div className="form-control w-full max-w-xs">
                <label className="label" htmlFor="search-facility">
                  <span className="label-text">Facility:</span>
                </label>
                <select
                  name="facility"
                  id="search-facility"
                  className="select select-bordered w-full"
                  defaultValue={'DEFAULT'}
                  onChange={onHandleChange}
                >
                  <option disabled value="DEFAULT">Select Facility</option>
                  <option value={1}>AVCF</option>
                  <option value={2}>ACC</option>
                  <option value={3}>BCCF</option>
                  <option value={4}>BVCF</option>
                  <option value={5}>BVMC</option>
                  <option value={6}>CCF</option>
                  <option value={7}>CCC</option>
                  <option value={8}>CSP</option>
                  <option value={9}>CTCF</option>
                  <option value={10}>CCCF</option>
                  <option value={11}>DCC</option>
                  <option value={12}>DRDC</option>
                  <option value={13}>DWCF</option>
                  <option value={14}>FMCC</option>
                  <option value={15}>FCF</option>
                  <option value={16}>LVCF</option>
                  <option value={17}>LCF</option>
                  <option value={18}>RCC</option>
                  <option value={19}>SCCF</option>
                  <option value={20}>SCF</option>
                  <option value={21}>SCF</option>
                  <option value={22}>TCF</option>
                  <option value={23}>YOS</option>
                </select>
              </div>
            </li>

            <li>
              <div className="form-control w-full max-w-xs">
                <label className="label" htmlFor="search-gender">
                  <span className="label-text">Gender:</span>
                </label>
                <select
                  name="gender"
                  id="search-gender"
                  className="select select-bordered w-full"
                  defaultValue={'DEFAULT'}
                  onChange={onHandleChange}
                >
                  <option disabled value="DEFAULT">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select>
              </div>
            </li> */}

            <li>
              <div className="form-control w-full max-w-xs">
                <div className="btn-group btn-group-vertical lg:btn-group-horizontal">
                  <button type="reset" className="btn w-64">Reset</button>
                </div>
              </div>
            </li>

          </ul>
        </form>
      </div>
    </>
  )
}

export default SideBarBottom;