
pragma solidity ^0.4.20;

contract doctor{
    mapping (address=>bool) approvers;
    struct doctorStruct{
        address add;
        string name;
        string hospital;
        string speciality;
    }
    doctorStruct[] public doctors;
    function getNewDoctor(address add,string name,string hospital,string speciality) public
    {
        doctorStruct memory newDoc=doctorStruct({
            add:add,
            name:name,
            hospital:hospital,
            speciality:speciality
        });
        approvers[add]=true;
        doctors.push(newDoc);
    }
    function  checkIfdoctor(address checkDoc) view external returns(bool)
    {
        return approvers[checkDoc];
    }
  }
  
contract patient{
    mapping (address=>bool) approvers;
    struct patientStruct{
        address add;
        string name;
        uint age;
        uint weight;
    }
    patientStruct[] public patients;
    function getNewPatient(address add,string name,uint age,uint weight) public
    {
        patientStruct memory newPat=patientStruct({
            add:add,
            name:name,
            age:age,
            weight:weight
        });
        approvers[add]=true;
        patients.push(newPat);
    }
    function  checkIfpatient(address checkPat) view external returns(bool)
    {
        return approvers[checkPat];
    }
  }
  contract pharmacy{
    mapping (address=>bool) approvers;
    struct pharmacyStruct{
        address add;
        string name;
        uint licenseNo;
    }
    pharmacyStruct[] public pharmacys;
    function getNewPharmacy(address add,string name,uint licenseNo) public
    {
        pharmacyStruct memory newPhar=pharmacyStruct({
            add:add,
            name:name,
            licenseNo:licenseNo
        });
        approvers[add]=true;
        pharmacys.push(newPhar);
    }
    function  checkIfpharmacy(address checkPhar) view external returns(bool)
    {
        return approvers[checkPhar];
    }
  }
