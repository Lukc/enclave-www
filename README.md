# Dependencies

  * Hugo extended version >=0.43
  * npm
  * make

# Preparation

```bash
make dependencies
```

will install npm dependencies.

# Usage

```bash
make
```

will compile all needed files.

Result is available in **pub/** directory.

# Display on local

```bash
make server
```

will create a server available on **http://localhost:1313/**

Be careful as we gives XHTML files, you need to access your website using this address: http://localhost:1313/index.xhtml 
