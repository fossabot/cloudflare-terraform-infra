data "cloudflare_zones" "vortexdotname" {
  filter {
    name = "vortex.name"
  }
}

# zone
resource "cloudflare_zone" "vortex_name" {
  zone   = "vortex.name"
  paused = false
  plan   = "free"
  type   = "full"
}

# page_rule
resource "cloudflare_page_rule" "vortexdotname_https_rewrite" {
  zone_id  = data.cloudflare_zones.vortexdotname.zones[0].id
  target   = "http://*.vortex.name/*"
  priority = 1
  status   = "active"
  actions {
    always_use_https = true
  }
}

# record
resource "cloudflare_record" "vortexdotname_A_vortex_name_github1" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "vortex.name"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.111.153"
}

resource "cloudflare_record" "vortexdotname_A_vortex_name_github2" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "vortex.name"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.110.153"
}

resource "cloudflare_record" "vortexdotname_A_vortex_name_github3" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "vortex.name"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.109.153"
}

resource "cloudflare_record" "vortexdotname_A_vortex_name_github4" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "vortex.name"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.108.153"
}

resource "cloudflare_record" "vortexdotname_AAAA_connect-with_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "connect-with"
  type    = "AAAA"
  ttl     = "1"
  proxied = "true"
  value   = "100::"
}

resource "cloudflare_record" "vortexdotname_AAAA_workers_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "workers"
  type    = "AAAA"
  ttl     = "1"
  proxied = "true"
  value   = "100::"
}

resource "cloudflare_record" "vortexdotname_CNAME_dotfiles_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "dotfiles"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "0-vortex.github.io"
}

resource "cloudflare_record" "vortexdotname_CNAME_tedvortex-xyz_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "tedvortex-xyz"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "0-vortex.github.io"
}

resource "cloudflare_record" "vortexdotname_CNAME_terraform_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "terraform"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "0-vortex.github.io"
}

resource "cloudflare_record" "vortexdotname_CNAME_dark-elise_vortex_name" {
  zone_id = data.cloudflare_zones.vortexdotname.zones[0].id
  name    = "dark-elise"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "0-vortex.github.io"
}
