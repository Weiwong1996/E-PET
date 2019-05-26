package entity;

import java.io.Serializable;

public class Page implements Serializable{
	private int startRow;
	private int pageSize;
	private int totalCounts;
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCounts() {
		return totalCounts;
	}
	public void setTotalCounts(int totalCounts) {
		this.totalCounts = totalCounts;
	}
	public Page() {
		super();
	}
	public Page(int startRow, int pageSize) {
		super();
		this.startRow = startRow;
		this.pageSize = pageSize;
	}
	
}
