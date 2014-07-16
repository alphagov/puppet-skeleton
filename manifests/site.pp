# Use hiera as a lightweight ENC.
node default {
  hiera_include('classes')
}
