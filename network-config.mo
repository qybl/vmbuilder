ethernets:
  nic0:
    match:
      macaddress: "{{ _mac_address }}"
    addresses:
    - {{ _ip_address }}/{{ _netmask }}
    gateway4: {{ _gateway }}
    nameservers:
      search: [example.com]
      addresses: [192.0.2.53]
version: 2
