package com.studyssm.util;

public class Page {

	int start=0;
	int count = 5;
	int last = 0;
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		if(count<0) count=0;
		this.count = count;
	}
	public int getLast() {
		return last;
	}
	public void setLast(int last) {
		if(last == 0) last = 0;
		this.last = last;
	}
	
	public void caculateLast(int total) {
		if(total<0) total=0;
	    // 假设总数是50，是能够被5整除的，那么最后一页的开始就是45
	    if (0 == total % count)
	        last = total - count;
	    // 假设总数是51，不能够被5整除的，那么最后一页的开始就是50
	    else
	        last = total - total % count;		
	}

	
	
	
}
