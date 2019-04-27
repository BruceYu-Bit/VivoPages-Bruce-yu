package mybean.data;
import com.sun.rowset.*;
public class DataByPage {
    CachedRowSetImpl rowSet = null;
    int pageSize = 1;
    int totalPage = 1;
    int currentPage = 1;
    public void setRowSet(CachedRowSetImpl set) {
        rowSet = set;
    }
    public CachedRowSetImpl getRowSet() {
        return rowSet;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getTotalPage() {
        return totalPage;
    }
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
