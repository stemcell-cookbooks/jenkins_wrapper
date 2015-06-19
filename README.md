jenkins wrapper cookbook

Installs and configures Jenkins CI master, installs a set of jenkins plugins and installs and configures nginx proxy.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['jenkins_wrapper']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### jenkins_wrapper::default

Include `jenkins_wrapper` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[jenkins_wrapper::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
