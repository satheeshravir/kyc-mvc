package net.kyc.spring.web.candidate.dao;

public interface CandidateDao {
	public Object retrieveCandidate(String name);
	public Object retrieveCandidateForSearch(String name);
	
}
