program v
	real*8 vj
	real*8 u(4)
	real*8 h(4)
	real*8 zi,mu
	zi=0;mu=0
	data h /500,1000,2500,1200/
	data u /1800,2000,2500,3000/
	do i=1,4
		zi=h(i)*u(i)+zi
		mu=h(i)/u(i)+mu
	end do
	vj=(zi/mu)**0.5
	print *,vj
end program v
