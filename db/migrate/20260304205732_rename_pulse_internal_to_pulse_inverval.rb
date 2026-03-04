class RenamePulseInternalToPulseInverval < ActiveRecord::Migration[8.1]
  def change
    rename_column :pulses, :pulse_internal, :pulse_interval
  end
end
