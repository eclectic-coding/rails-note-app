module DateHelper

  def local_date(datetime)
    datetime = Time.zone.parse(datetime) if datetime.is_a?(String)

    tag.time(
      datetime.strftime('%b %e, %Y'),
      datetime: datetime.utc.iso8601
    )
  end

end
