package com.company.dao;

import java.util.List;

import com.company.dto.PeopleNoteboxDTO;

public interface PeopleNoteboxDAO {

	public void apply(final String sitename, final PeopleNoteboxDTO dto);
	public List<PeopleNoteboxDTO> receivenotebox(final String sitename, final String userid);
	public PeopleNoteboxDTO viewnote(final String sitename, final int noteboxid);
	public void deletenote(final String sitename, final int noteboxid);
}
