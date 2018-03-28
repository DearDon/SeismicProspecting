program shiju
	real*8 v1,v2,v3,h1,h2,a1,a2,x0,x,t,t0
	v1=500;v2=1200;v3=3600;h1=20;h2=10
	open(13,file="shiju-3")
	t0=2*h1/(v1*(1-(v1/v3)**2)**0.5)+2*h2/(v2*(1-(v2/v3)**2)**0.5)
	x0=2*h1*v1/v3/(1-(v1/v3)**2)**0.5+2*h2*v2/v3/(1-(v2/v3)**2)**0.5
	write(13,"(3a13)")"t","x","zheshe"
	do i=1,2
		t=t0+(x0*i-x0)/v3
		x=x0*i
		write(13,"(2f13.6)")t,x
	end do
	write(13,"(3a13)")"t","x","fanshe"
	a1=0
	do i=1,20
		t=2*h1/(1-sin(0.1*i)**2)**0.5/v1
		t=t+2*h2/(1-(sin(0.1*i)*v2/v1)**2)**0.5/v2
		x=2*h1*sin(0.1*i)/(1-sin(0.1*i)**2)**0.5
		x=x+2*h2*(sin(0.1*i)*v2/v1)/(1-(sin(0.1*i)*v2/v1)**2)**0.5
		write(13,"(2f13.6)")t,x
	end do

	close(13)
end program shiju
