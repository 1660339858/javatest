/**
 * 
 */
package com.project.shopping.domain;

/**
* @Title: PageIngo
* @Description:
* @date 2020年4月9日 下午8:03:45
*/
public class PageInformation {

	private int page = 0;
	private int limit = 8;
	private int count;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	@Override
	public String toString() {
		return "PageInformation [page=" + page + ", limit=" + limit + ", count=" + count + "]";
	}
	
	
	
}
