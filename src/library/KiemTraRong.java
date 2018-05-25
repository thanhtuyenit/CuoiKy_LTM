package library;

public class KiemTraRong {
	public static int dem(String str) {
		int wordCount = 0;
	    str = str.replaceAll("\\s+", " "); 
	    str = str.replaceAll("(^\\s+|\\s+$)", "");
		String[] strArr = str.split("\\s", 0);
		for (String strArr1 : strArr) {
			if (!strArr1.isEmpty())
				wordCount++;
		}
		return wordCount;
	}

}