variable "jwt_private_key" {
  default = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpK13yfhIY0zR5mFX+HNT66scDn8gxk+g/1hD1lwspaJffecjptK5kwKstlwkTF/rfFL67EOkbEzwyeTbM52X6U/AA1cvM/W6zk/U/IDdg/Jxb0nsLlhNBbQaIQvcz3dlfu8wmJWgFhuU/ck+ViehiUE5G5zQk+Tfcq18Rk/7vypek8czyKZiskt7xx6IMssUNT+eHkoLZ1YDLdyLVqGgnVD0QuGnchku85Nfnsf9PZUo5g7Jrn5JPjWH4mPMj6oZNWctwppb6TblguVWeRKym93H3z7JAOLuRs5NLrJFkdQ8PrA+T+dSjOkPSdkpxygfhb7MzCZBW2wADokID2B8bAgMBAAECggEART8puSnO6ZeGyuFHDfoqWj2BUmP01Ap5zqunDIiT+pLEXCdjTPr3SemuCD7jaYvu1qMMwdEVwk343aZNfsmXrkTuoMDjKBlzV5HQmVLsKEivDk0VrfP0FNt2iY9z1ijRIoVidxjnwB9sNrDpj8pANAIwUIiyiRH0wmDpzO26NNgbKSPbThMGgW++iJAIesT/55ds+a3H6C5V0HQ18sEFqfRSGmTRTSZbru0arQEcklKQB058BsXsBa6yDPH3SF5uanvCezDgzdnffCyqsHZS+BoZfsOLT6PeNaDJKEwqwn9grKQRtHVMQTuPcdKP2TqIrg/wCAJDzzsCWbaHAZgyOQKBgQDnsz+FmLIMfyvZCv+qhQGqds6Z/DNQMQWS/hOrMOPe8Qygz2rwB3g8zZXN/rZJlriyrZcLTLgoZwDNRy1Q5Z1EcDp3RMsWhLusqefZm1oflQY++Otdh1bc0c2S07KOYSRsTKpHEBAaUbNxEBqeWPj5f+P6OjZNOjz6EmWjCsYNmQKBgQC66UZThtlySIe9p58XBLZXWJfPGLU3RNqUJ4oGpwPswgxs5GFe6/6J3zxlV+pjkWnv2ibD6x7Uqaj1esX/ReBxWEQLiWgocZ0C2efeTRBMWzTWcPsDcvv9feVMNr+awGFlZYX59gfUG4t20zEIi3qzD23JL4p1Atp7GhrilSB60wKBgFwoVKS7tl34GyWqFUTqwF3gAY8H3BUSWog73PDjck9Ti1VPCtbL8cwlbWdQ34pnk7EmEITjEACp74y2udSKb8Iv7WFREII1azxjHB/WhcM4EBLuCRfbY/ZS0LSM1WGCS+1zlOrM/cqqInhfEmdXNjhu4Ou/Safv+R7yQFDYUSxJAoGAIUV5IVE1z+QdVaNK7HwIQVAh5dmOGIKHLixDo5+DUVfRgmi89Hqp2r0EMT4PGR4/b1Sz5dgqqsxwqRHrwN8dbs+5fRw+kER5IJLNdYLeTdlGdI20AQ8s0BjjAkgUn2VzcOs7iB1Fk3o7vzEk31KEyu8KKe/ug5m4boVdF8xX9cUCgYEA1F6AJXOgT96ieHkq4tg79OMh8YnFKr3V0aTmimxgjfUOHGDpncOIkGiAun0dGVjNMyoUNzaakWCz7yKkY4TFRicStb40wGwLMdT+tLBRrW5e76MCTeFGxVKEg3o3rnKRpi+QZIaSUaQ+Gcl6G5bBfhxkrgG/f+d+Eb51fRE97a4="
  type    = string
}

variable "jwt_public_key" {
  default = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqStd8n4SGNM0eZhV/hzU+urHA5/IMZPoP9YQ9ZcLKWiX33nI6bSuZMCrLZcJExf63xS+uxDpGxM8Mnk2zOdl+lPwANXLzP1us5P1PyA3YPycW9J7C5YTQW0GiEL3M93ZX7vMJiVoBYblP3JPlYnoYlBORuc0JPk33KtfEZP+78qXpPHM8imYrJLe8ceiDLLFDU/nh5KC2dWAy3ci1ahoJ1Q9ELhp3IZLvOTX57H/T2VKOYOya5+ST41h+JjzI+qGTVnLcKaW+k25YLlVnkSspvdx98+yQDi7kbOTS6yRZHUPD6wPk/nUozpD0nZKccoH4W+zMwmQVtsAA6JCA9gfGwIDAQAB"
  type    = string
}

variable "clockin_mail_password" {
  type = string
}
