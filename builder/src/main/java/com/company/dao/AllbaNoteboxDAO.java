package com.company.dao;

import java.util.List;

import com.company.dto.AllbaNoteboxDTO;

public interface AllbaNoteboxDAO {

	public void apply(final String sitename, final AllbaNoteboxDTO dto);
	public List<AllbaNoteboxDTO> receivenotebox(final String sitename, final String userid);
	public AllbaNoteboxDTO viewnote(final String sitename, final int noteboxid);
	public void deletenote(final String sitename, final int noteboxid);
}
