package com.itwillbs.service;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.GetProDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProDTO;

public interface ProService {

    public void insertPro(ProDTO proDTO);
    void insertAddress(AddressDTO addressDTO);
    AddressDTO passAddress(String[] addr,String[] extraAddr,String detailAddress,double x,double y);
    int getMaxAddrId();
    ProDTO getPro(String email);
    GetProDTO getProid(int id);
    GetProDTO getProemail(String email);
    public ProDTO proCheck(ProDTO proDTO);

    public void deletePro(ProDTO proDTO);
}
