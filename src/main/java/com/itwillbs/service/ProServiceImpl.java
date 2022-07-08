package com.itwillbs.service;

import com.itwillbs.dao.ProDAO;
import com.itwillbs.domain.AddistrictDTO;
import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.CityDTO;
import com.itwillbs.domain.DistrictDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.ProDTO;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class ProServiceImpl implements ProService {
	@Inject
	private AddressDTO addressDTO;
	
	@Inject
	private ProDAO proDAO;
	
	@Override
    public void insertPro(ProDTO proDTO) {
		proDTO.setAddress_id(getMaxAddrId());
		System.out.println(proDTO.getAddress_id());
    	proDAO.insertPro(proDTO);
    }

	@Override
	public ProDTO getPro(String email) {
		// TODO Auto-generated method stub
		return proDAO.getPro(email);
	}

	@Override
	public GetProDTO getProid(int id) {
		// TODO Auto-generated method stub
		return proDAO.getProid(id);
	}

	@Override
	public GetProDTO getProemail(String email) {
		// TODO Auto-generated method stub
		return proDAO.getProemail(email);
	}

	@Override
	public AddressDTO passAddress(String[] addr, String[] extraAddr,String detailAddress,double x, double y) {
		CityDTO cityDTO = new CityDTO();
		DistrictDTO districtDTO = new DistrictDTO();
		AddistrictDTO addistrictDTO = new AddistrictDTO();
		if(extraAddr[0]=="") {
			cityDTO.setCity(addr[0]);
			cityDTO=proDAO.getCity(cityDTO);
				
			districtDTO.setCity_id(cityDTO.getId());
			districtDTO.setDistrict(addr[1]);
			districtDTO=proDAO.getDistrict(districtDTO);
						
			addistrictDTO.setDistrict_id(districtDTO.getId());
			addistrictDTO.setAddistrict(addr[2]);
			addistrictDTO=proDAO.getAddDistrict(addistrictDTO);
		}else {
			cityDTO.setCity(addr[0]);
			cityDTO=proDAO.getCity(cityDTO);
			
			districtDTO.setCity_id(cityDTO.getId());
			districtDTO.setDistrict(addr[1]);
			districtDTO=proDAO.getDistrict(districtDTO);
						
			addistrictDTO.setDistrict_id(districtDTO.getId());
			addistrictDTO.setAddistrict(extraAddr[0]);
			addistrictDTO=proDAO.getAddDistrict(addistrictDTO);
		}

		addressDTO.setCity_id(districtDTO.getCity_id());
		addressDTO.setDistrict_id(addistrictDTO.getDistrict_id());
		addressDTO.setAddistrict_id(addistrictDTO.getId());
		addressDTO.setAddressdetail(detailAddress);
		addressDTO.setX_axis(x);
		addressDTO.setY_axis(y);

		return addressDTO;
	}

	@Override
	public void insertAddress(AddressDTO addressDTO) {
		// TODO Auto-generated method stub
		proDAO.insertAddress(addressDTO);
	}

	@Override
	public int getMaxAddrId() {
		// TODO Auto-generated method stub
		return proDAO.getMaxAddrId();
	}
	
	@Override
	public ProDTO proCheck(ProDTO proDTO) {
		System.out.println("ProServiceImpl proCheck()");
		return proDAO.proCheck(proDTO);
	}

	@Override
	public void deletePro(ProDTO proDTO) {
		System.out.println("ProServiceImpl deletePro()");
		proDAO.deletePro(proDTO);
	}

}
