<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/smcallister594/Update-UserUPN">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>


  <h3 align="center">Update-UserUPN</h3>

  <p align="center">
    <br />
    <a href="https://github.com/smcallister594/Update-UserUPN"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/smcallister594/Update-UserUPN/issues">Report Bug</a>
    ·
    <a href="https://github.com/smcallister594/Update-UserUPN/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
<!--
[![Product Name Screen Shot][product-screenshot]](https://example.com)
-->
This module was written as part of a project to migrate all users to Exchange online. A requirement for this was to have all users email addresses and UPNs match. This script looks up a user based on their SamAccountName or by OU and updates their UPN to match their EmailAddress

### Built With
* [VSCode](https://code.visualstudio.com/)
* [Powershell 7](https://devblogs.microsoft.com/powershell/announcing-powershell-7-0/)

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* This has been tested in Powershell V5.1 and V7
* Active Directory PowerShell module
* Appropriate domain suffixes configured in Active Directory
### Installation

1. This module is available via the [Powershell Gallery](https://www.powershellgallery.com/packages/Update-UserUPN)
```Powershell
Install-Module -Name Update-UserUPN
```

<!-- USAGE EXAMPLES -->
## Usage

* Assuming user Joe Bloggs AD Object looks like this 
```Powershell
User UPN Logon - Bloggs.Joe@company.contoso.com 
User SamAccountName Logon - domain\bloggs.joe
E-Mail - joe.bloggs@contoso.com 
```

1. This will update Joe Bloggs UPN to match his email address but leave his SamAccountName unchanged
```Powershell
Update-UserUPN -SamAccountName bloggs.joe
```
2. This will update the UPN's of all users, in the OU specified, to match their email address
```Powershell
Update-UserUPN -OU "OU=UsersSubOU,OU=Users,DC=company,DC=com"
```
3. This will produce a list of the users current UPN and what their UPN will become (Email Address) should you run either of the above commands, As well as their AD Description (This was more for my benefit and can easily be removed or modified)
```Powershell
Update-UserUPN -OU "OU=UsersSubOU,OU=Users,DC=company,DC=com" -ReportOnly

UserPrincipalName            EmailAddress                     Description
-----------------            ------------                     -----------
Bloggs.Joe                   Joe.Bloggs@domain.com            Developer
BGatesUPN                    Bill.Gates@domain.com            Developer
APersonUPN                   Angela.Person@domain.com         Developer

Update-UserUPN -SamAccountName bloggs.joe -ReportOnly

UserPrincipalName            EmailAddress                     Description
-----------------            ------------                     -----------
Bloggs.Joe                   Joe.Bloggs@domain.com            Developer
```


<!-- ROADMAP 
## Roadmap

See the [open issues](https://github.com/smcallister594/Update-UserUPN/issues) for a list of proposed features (and known issues).
-->


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE 
## License

Distributed under the AGPLv3.0 License. See `LICENSE` for more information.
-->


<!-- CONTACT 
## Contact

Project Link: [https://github.com/smcallister594/Update-UserUPN/]https://github.com/smcallister594/Update-UserUPN/)

-->

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Chris Dent](https://gist.github.com/indented-automation)
