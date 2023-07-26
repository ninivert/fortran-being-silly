module uwu
	implicit none
	private

	integer, parameter :: dp=kind(0.d0)

	public say_uwu_and_return_zero
contains
	real(dp) function say_uwu_and_return_zero() result(r)
		print *, 'uwu'
		r = 0.0_dp
	end function say_uwu_and_return_zero
end module uwu