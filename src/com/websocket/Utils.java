package com.websocket;

import java.util.List;
import java.util.Set;

public class Utils {

	
	
	public static <T extends Marker>  T extractFromMarkerList(List <T> list, T target)
	{	T t = null;
		if(list !=null && target !=null)
		{
			for(T curr : list)
			{
				if(curr.equals(target) )
				{
					return curr;
				}
			}
		}
		
		return t;
	}
	
	public static <T extends Marker>  T extractFromMarkerSet(Set <T> list, T target)
	{	T t = null;
		if(list !=null && target !=null)
		{
			for(T curr : list)
			{
				if(curr.equals(target) )
				{
					return curr;
				}
			}
		}
		
		return t;
	}
}
