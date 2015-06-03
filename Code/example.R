f<-function(n){

	if(n<=0){
		list("要求输入一个正整数");
	}else{
		repeat {
			if(n==1) break;
			if(n%%2==0){n=n/2;}
			else{n=3*n+1;}
		}
      list("运算成功!")
	}
}
