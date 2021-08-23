package egovframework.example.sample.financial.service;

import java.util.List;


public interface FinancialService {
	List<?> selectDepositList(FinancialVO financialVO) throws Exception;
	
	List<?> selectSavingList(FinancialVO financialVO) throws Exception;
	
	String selectLoanInterest(FinancialVO financialVO) throws Exception;
	
	String selectLoanAmount(FinancialVO financialVO) throws Exception;
}
