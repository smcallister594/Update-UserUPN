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
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
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

1. This module is available via the Powershell Gallery
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

1. This will update Joe Bloggs UPN Logon to match his email address but leave his SamAccountName unchanged
```Powershell
Update-UserUPN bloggs.joe
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
* []()
* []()





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/WeLoveRice/cloudCastAPI.svg?style=for-the-badge
[contributors-url]: https://github.com/WeLoveRice/cloudCastAPI/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/WeLoveRice/cloudCastAPI.svg?style=for-the-badge
[forks-url]: https://github.com/WeLoveRice/cloudCastAPI/network/members
[stars-shield]: https://img.shields.io/github/stars/WeLoveRice/cloudCastAPI.svg?style=for-the-badge
[stars-url]: https://github.com/WeLoveRice/cloudCastAPI/stargazers
[issues-shield]: https://img.shields.io/github/issues/WeLoveRice/cloudCastAPI.svg?style=for-the-badge
[issues-url]: https://github.com/WeLoveRice/cloudCastAPI/issues
[license-shield]: https://img.shields.io/github/license/WeLoveRice/cloudCastAPI.svg?style=for-the-badge
[license-url]: https://github.com/WeLoveRice/cloudCastAPI/blob/main/LICENSE
