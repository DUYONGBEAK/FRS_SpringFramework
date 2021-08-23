package egovframework.example.sample.financial.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.financial.service.FinancialService;
import egovframework.example.sample.financial.service.FinancialVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("financialService")
public class FinancialServiceImpl extends EgovAbstractServiceImpl implements FinancialService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(FinancialServiceImpl.class);
	// TODO mybatis 사용
	@Resource(name = "financialMapper")
	private FinancialMapper financialDAO;
	
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Resource(name="financialService")
	private FinancialService financialService;
	
	@Override
	public List<?> selectDepositList(FinancialVO financialVO) throws Exception {
		return financialDAO.selectDepositList(financialVO);
	}
	
	@Override
	public List<?> selectSavingList(FinancialVO financialVO) throws Exception {
		return financialDAO.selectSavingList(financialVO);
	}
	
	@Override
	public String selectLoanInterest(FinancialVO financialVO) throws Exception{
		return financialDAO.selectLoanInterest(financialVO);
	}
	
	@Override
	public String selectLoanAmount(FinancialVO financialVO) throws Exception{
		return financialDAO.selectLoanAmount(financialVO);
	}
	
}
