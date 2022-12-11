config {
  # Enables module inspection
  module = true
  force  = false
}

# Disallow legacy dot index syntax.
rule "terraform_deprecated_index" {
  enabled = true
}

# Disallow deprecated (0.11-style) interpolation
rule "terraform_deprecated_interpolation" {
  enabled = true
}

# Disallow variables, data sources, and locals that are declared but never used.
rule "terraform_unused_declarations" {
  enabled = true
}

# Disallow output declarations without description.
rule "terraform_documented_outputs" {
  enabled = true
}

# Disallow variable declarations without description.
rule "terraform_documented_variables" {
  enabled = true
}

# Disallow variable declarations without type.
rule "terraform_typed_variables" {
  enabled = true
}

# Disallow // comments in favor of #.
rule "terraform_comment_syntax" {
  enabled = true
}

# Enforces naming conventions
rule "terraform_naming_convention" {
  enabled = true

  # Require specific naming structure
  variable {
    format = "snake_case"
  }

  locals {
    format = "snake_case"
  }

  output {
    format = "snake_case"
  }

  resource {
    format = "snake_case"
  }

  module {
    format = "snake_case"
  }

  data {
    format = "snake_case"
  }
}

# Disallow comparisons with [] when checking if a collection is empty.
rule "terraform_empty_list_equality" {
  enabled = true
}

# Disallow terraform declarations without require_version.
rule "terraform_required_version" {
  enabled = true
}

# Require that all providers have version constraints through required_providers.
rule "terraform_required_providers" {
  enabled = true
}

# Check that all required_providers are used in the module.
rule "terraform_unused_required_providers" {
  enabled = true
}

# Ensure that a module complies with the Terraform Standard Module Structure
rule "terraform_standard_module_structure" {
  enabled = true
}

# Ensure that all modules sourced from a Terraform Registry specify a version.
rule "terraform_module_version" {
  enabled = true
  #exact = false # default is false (Require an exact version)
}

# Disallow specifying a git or mercurial repository as a module source without pinning to a version.
rule "terraform_module_pinned_source" {
  enabled = true
}

# Terraform.workspace should not be used with a "remote" backend with remote execution.
rule "terraform_workspace_remote" {
  enabled = true
}
