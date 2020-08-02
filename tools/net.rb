require "socket"

module Utils
  SOCKET_ERRORS = [
    Errno::EADDRNOTAVAIL,
    Errno::EHOSTUNREACH,
    Errno::ECONNREFUSED,
    Errno::ETIMEDOUT
  ].freeze

  private_constant :SOCKET_ERRORS

  class << self
    def host_ip
      host_name = Socket.gethostname
      Addrinfo.ip(host_name).ip_address
    end

    def verify_ports(*ports, status:, time_out: 0)
      ports.all? do |port|
        port_status(port, time_out: time_out) == status
      end
    end

    def port_status(port, time_out: 0)
      host_name = Socket.gethostname
      :in_use if Socket.tcp(host_name, port)
    rescue *SOCKET_ERRORS
      return :unused if time_out.zero?

      sleep(1)
      port_status(port, time_out: time_out - 1)
    end
  end
end
