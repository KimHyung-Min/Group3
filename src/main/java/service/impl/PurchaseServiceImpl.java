package service.impl;

import model.dao.dao.PurchaseDAO;
import model.dao.impl.PurchaseDAOImpl;
import model.vo.PurchaseBookVO;
import model.vo.PurchaseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.service.PurchaseService;

import java.util.List;
import java.util.Map;

@Service("purchaseService")
public class PurchaseServiceImpl implements PurchaseService {

    @Autowired
    PurchaseDAOImpl purchaseDAO;

    @Override
    public String insertPurchase(Map purchaseMap) {
        return purchaseDAO.insertPurchase(purchaseMap);
    }

    @Override
    public void insertPurchaseBook(PurchaseBookVO purchaseBookVO) {
        purchaseDAO.insertPurchaseBook(purchaseBookVO);
    }

    @Override
    public List<String> selectOrderNumber(PurchaseVO purchaseVO) {
        return purchaseDAO.selectOrderNumber(purchaseVO);
    }

    @Override
    public List<PurchaseVO> selectOrderList(PurchaseVO purchaseVO) {
        return purchaseDAO.selectOrderList(purchaseVO);
    }

    @Override
    public PurchaseVO purchaseInfo(PurchaseVO purchaseVO) {
        return purchaseDAO.purchaseInfo(purchaseVO);
    }

    @Override
    public List<PurchaseVO> selectDetailOrder(PurchaseVO purchaseVO) {
        return purchaseDAO.selectDetailOrder(purchaseVO);
    }

    @Override
    public void cancelOrder(PurchaseVO purchaseVO) {
        purchaseDAO.cancelOrder(purchaseVO);
    }
}