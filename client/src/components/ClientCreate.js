import {useState, useEffect} from 'react';

function ClientCreate({onAddClient}) {
  const navigate = useNavigate();
  const initValues = {
    first_name: "",
    last_name: "",
    middle_initial: "",
    age: "",
    ethnicity: "",
    gender: "",
    doc_number: "",
    est_parole_eligibility_date: "",
    next_parole_hearing_date: "",
    est_mandatory_release_date: "",
    est_sentence_discharge_date: "",
    facility: "",
    organization: ""
  };
  const [formData, setFormData] = useState(initValues);
  const {first_name, last_name, middle_initial, age, ethnicity, gender,
          doc_number, est_parole_eligibility_date, next_parole_hearing_date,
          est_mandatory_release_date, est_sentence_discharge_date,
          facility, organization
        } = formData;

  return(
    <>
      <div className="drawer drawer-mobile">
        <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
        <div className="drawer-content flex flex-col mt-8">
          {/* <!-- Page content here --> */}
          <h1 className="text-2xl font-bold justify-center">Create Client</h1>
          <div className="min-w-max">
          <form>
          <div className="space-y-12">

              <div className="border-b pb-12">

                <div className="mt-4 grid grid-cols-1 gap-y-8 gap-x-6 sm:grid-cols-6">
                  <div className="sm:col-span-1">
                    <div className="form-control">
                      <label className="label" htmlFor="first-name">
                        <span className="label-text">First Name:</span>
                      </label>
                      <input type="text" name="first_name" id="first-name" placeholder="Ex: Alex" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>
                  <div className="sm:col-span-1">
                    <div className="form-control">
                      <label className="label" htmlFor="middle-name">
                        <span className="label-text">MI:</span>
                      </label>
                      <input type="text" name="middle_initial" id="middle-name" placeholder="Ex: J" className="input input-bordered w-full max-w-xs" maxlength={1} />
                    </div>
                  </div>

                  <div className="sm:col-span-4">
                    <div className="form-control">
                      <label className="label" htmlFor="last-name">
                        <span className="label-text">Last Name:</span>
                      </label>
                      <input type="text" name="last_name" id="last-name" placeholder="Ex: Smith" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-1" title="Must follow CDOC format. 3-6 digits.">
                    <div className="form-control">
                      <label className="label" htmlFor="doc-number">
                        <span className="label-text">DOC Number:</span>
                      </label>
                      <input type="number" name="doc_number" id="doc-number" placeholder="Ex: 123456" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-1" title="14 to 105">
                    <div className="form-control">
                      <label className="label" htmlFor="age">
                        <span className="label-text">Age:</span>
                      </label>
                      <input type="number" name="age" id="age" placeholder="Ex: 44" max={110} min={14} className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-1" title="Must follow CDOC format. Male or Female.">
                    <div className="form-control max-w-xs">
                      <label className="label" htmlFor="gender">
                        <span className="label-text">Gender:</span>
                      </label>
                      <select name="gender" id="gender" className="select select-bordered w-full" defaultValue={'DEFAULT'} >
                        <option disabled value="DEFAULT">Select Gender</option>
                        <option value={"Male"}>Male</option>
                        <option value={"Female"}>Female</option>
                      </select>
                    </div>
                  </div>

                  <div className="sm:col-span-2" title="Must follow CDOC format.">
                    <div className="form-control w-full max-w-xs">
                      <label className="label" htmlFor="ethnicity">
                        <span className="label-text">Ethnicity:</span>
                      </label>
                      <select name="ethnicity" id="ethnicity" className="select select-bordered w-full" defaultValue={'DEFAULT'} >
                        <option disabled value="DEFAULT">Select Ethnicity</option>
                        <option value={"Am. Indian"}>Am. Indian</option>
                        <option value={"Asian"}>Asian</option>
                        <option value={"Black"}>Black</option>
                        <option value={"Hispanic"}>Hispanic</option>
                        <option value={"Hwn/Pc isl"}>Hwn/Pc isl</option>
                        <option value={"Other"}>Other</option>
                        <option value={"Unknown"}>Unknown</option>
                        <option value={"White"}>White</option>
                      </select>
                    </div>
                  </div>

                  <div className="sm:col-span-2">
                    <div className="form-control">
                      <label className="label" htmlFor="est-parole-eligibility-date">
                        <span className="label-text">Est. Parole Eligibility Date:</span>
                      </label>
                      <input type="date" name="est_parole_eligibility_date" id="est-parole-eligibility-date" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-3">
                    <div className="form-control">
                      <label className="label" htmlFor="next-parole-hearing-date">
                        <span className="label-text">Next Parole Hearing Date:</span>
                      </label>
                      <input type="date" name="next_parole_hearing_date" id="next-parole-hearing-date" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-2">
                    <div className="form-control">
                      <label className="label" htmlFor="est-mandatory-release-date">
                        <span className="label-text">Est. Mandatory Release Date:</span>
                      </label>
                      <input type="date" name="est_mandatory_release_date" id="est-mandatory-release-date" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="sm:col-span-4">
                    <div className="form-control">
                      <label className="label" htmlFor="est-sentence-discharge-date">
                        <span className="label-text">Est. Sentence Discharge Date:</span>
                      </label>
                      <input type="date" name="est_sentence_discharge_date" id="est-sentence-discharge-date" className="input input-bordered w-full max-w-xs" />
                    </div>
                  </div>

                  <div className="form-control w-full max-w-xs">
                    <label className="label" htmlFor="facility-id">
                      <span className="label-text">Facility:</span>
                    </label>
                    <select name="facility_id" id="facility-id" className="select select-bordered w-full" defaultValue={'DEFAULT'} >
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

                  {/* FIXME: Likely needs to check the organization_id or the current user */}
                  <input type="hidden" id="organization-id" name="organization-id" value="1"></input>

                </div>
              </div>
            </div>

            <div className="mt-6 flex items-center justify-center gap-x-6">
              <button type="button" className="text-sm font-semibold leading-6">
                Cancel
              </button>
              <button
                type="submit"
                className="rounded-md bg-indigo-600 py-2 px-3 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
              >
                Save
              </button>
            </div>
          </form>
          </div>
          <label htmlFor="my-drawer-2" className="btn btn-primary drawer-button lg:hidden mt-8">Menu</label>
        </div>
      </div>
    </>
  )
}

export default ClientCreate;