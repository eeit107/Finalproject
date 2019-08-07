package com.web.store.controller;

import java.util.Locale;

import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

public class ExcelViewResolver implements ViewResolver {

	@Override
	public View resolveViewName(String viewName, Locale locale) throws Exception {

		View view = null;
		if (viewName.startsWith("company-excel")) {
			view = new companyExcelView();

		}
		// System.out.println("ExcelViewResolver, viewName=" + viewName + ", return
		// value=" + view);
		return view;
	}

}