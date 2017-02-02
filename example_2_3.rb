user = {
  user: {
    address: {
      street1: '123 Main street'
    }
  }
}

user.dig(:user, :address, :street1) # => '123 Main street'

results = [[[1, 2, 3]]]

results.dig(0, 0, 0) # => 1


user = {
  user: {
    'address' => {
      street1: '123 Main street'
    }
  }
}
