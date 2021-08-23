package egovframework.example.sample.financial.service.impl;

import java.util.List;

import egovframework.example.sample.financial.service.FinancialVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("financialMapper")
public interface FinancialMapper {
	List<?> selectDepositList(FinancialVO financialVO) throws Exception;
	
	List<?> selectSavingList(FinancialVO financialVO) throws Exception;
	
	String selectLoanInterest(FinancialVO financialVO) throws Exception;
	
	String selectLoanAmount(FinancialVO financialVO) throws Exception;
}
